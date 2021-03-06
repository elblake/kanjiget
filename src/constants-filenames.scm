;;;
;;;    KanjiGet
;;;    Copyright 2011-2012 Edward L. Blake
;;;
;;;    This source file is part of KanjiGet.
;;;    See LICENSE.txt
;;;

(define CONST_FILE_KANJIIDX0 "knjidxl0.dat")
(define CONST_FILE_KANJIMTX  "kanjimtx.dat")
(define CONST_FILE_KANJIRDC0 "knjirdc0.dat")

(define CONST_FILE_WIKTDATA  "wiktdata.dat")
(define CONST_FILE_WIKTINDX  "wiktindx.dat")
(define CONST_FILE_WIKTLKUP  "wiktlkup.dat")

(define (resolve-data-file-path a)
  (define b (::path-build ".." a))
  (define c (::path-build ".." "data" a))
  (define d (::path-build "data" a))
  (define init-dir (::system-path 'init-dir))
  (define exec-dir
    (let-values ([(a b) (::path-split (::system-path 'exec-file))]) a))
  (define run-dir 
    (let-values ([(a b) (::path-split (::system-path 'run-file))]) a))
  (define orig-dir (::system-path 'orig-dir))
  (define ia (::path-build init-dir a))
  (define ib (::path-build init-dir b))
  (define ic (::path-build init-dir c))
  (define id (::path-build init-dir d))
  (define ea (::path-build exec-dir a))
  (define eb (::path-build exec-dir b))
  (define ec (::path-build exec-dir c))
  (define ed (::path-build exec-dir d))
  (define ra (::path-build run-dir a))
  (define rb (::path-build run-dir b))
  (define rc (::path-build run-dir c))
  (define rd (::path-build run-dir d))
  (define oa (::path-build orig-dir a))
  (define ob (::path-build orig-dir b))
  (define oc (::path-build orig-dir c))
  (define od (::path-build orig-dir d))
  (define h (::path-build (::system-path 'home-dir) ".KanjiGetData" a))
  
  ; For debugging on Mac
  ;(message-box "Init" (format "~s~n~s~n~s~n~s" ia ib ic id))
  ;(message-box "Exec" (format "~s~n~s~n~s~n~s" ea eb ec ed))
  ;(message-box "RunT" (format "~s~n~s~n~s~n~s" ra rb rc rd))
  ;(message-box "Orig" (format "~s~n~s~n~s~n~s" oa ob oc od))
  (cond
    [(::file? a) a ]
    [(::file? b) b ]
    [(::file? c) c ]
    [(::file? d) d ]
    [(::file? ia) ia ]
    [(::file? ib) ib ]
    [(::file? ic) ic ]
    [(::file? id) id ]
    [(::file? ea) ea ]
    [(::file? eb) eb ]
    [(::file? ec) ec ]
    [(::file? ed) ed ]
    [(::file? ra) ra ]
    [(::file? rb) rb ]
    [(::file? rc) rc ]
    [(::file? rd) rd ]
    [(::file? oa) oa ]
    [(::file? ob) ob ]
    [(::file? oc) oc ]
    [(::file? od) od ]
    [(::file? h) h ]
    [else a]
    )
  )
