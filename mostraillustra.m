function mostraillustra
    clc; close all;
    display( sprintf('Il valore inserito sar? il numero di nodi usati durante gli esercizi' ) );
    n = input('inserisci n:   ');
    esercizio = input('esercizio da fare [0 = show all]: ');
    
    nodes = linspace(-n/2, n/2-1, n);
    f = nodes.^3;
    
    if( esercizio == 2 || esercizio == 0)
        ANUM1es1(nodes);
        title('2] Basi di lagrange su '+string(n)+' punti');
        clc
        display( sprintf('Scrivere un programma di tipo function che assegnato un \n vettore di n + 1 nodi (numerati da 1 a n+1) costruisce e disegna\n una specifica base di Lagrange `j (x), j 2 {1, ? ? ? , n + 1}') );
        waitforbuttonpress
        hold off
    end
    if( esercizio == 3 || esercizio == 0)
        ANUM1es3(nodes, f);
        title('3] Interpolazione di Lagrange su '+string(n)+' punti di f(x) = x^3 ');
        clc
        display( sprintf('programma che assegnato un vettore f = (f1, ? ? ? , fn+1)\ned un vettore di nodi nodi = (nodi1, ? ? ? , nodin+1) costruisce il\npolinomio interpolante pn(nodii) = fi, i=1,???,n+1 \ne lo disegna insieme ai dati') );
        nodes 
        f
        waitforbuttonpress
        hold off
    end
    if( esercizio == 4 || esercizio == 0)
        for i = 2:2:20
            ANUM1es4(i);
            title('4.1] studio convergenza con n = 2,..,20 a f(x) = 1/(25x^2+1) ');
            clc
            display( sprintf('Nel caso di n + 1 nodi uniformi in [ 1, 1],\nutilizzare il programma del punto precedente per uno studio della convergenza\ndella successione {pn(x), n = 3, 4, 5, 6, ? ? ? } dei polinomi interpolanti la funzione f da cui\n sono letti i dati nel caso f(x) = 1 e f(x) = sin(2?x).') );
            waitforbuttonpress
            hold off
        end

        for i = 2:2:20
            ANUM1es4s(i);
            title('4.2] nodi uniformi convergenza con n = 2,..,20 a f(x) = 1/(25x^2+1) ');    
            clc
            display( sprintf('Scrivere un programma di tipo function che assegnato un \n vettore di n + 1 nodi (numerati da 1 a n+1) costruisce e disegna una specifica base di Lagrange `j (x), j 2 {1, ? ? ? , n + 1}') );
            waitforbuttonpress
            hold off
        end
    end
    if( esercizio == 5 || esercizio == 0)
        for i = 2:2:20
            ANUM1es5(i);
            title('5.1] nodi chebychev convergenza con n = 2,..,20 a f(x) = sin(2*pi*x) ');
            clc
            display( sprintf('Scrivere un programma di tipo function che assegnato un \n vettore di n + 1 nodi (numerati da 1 a n+1) costruisce e disegna una specifica base di Lagrange `j (x), j 2 {1, ? ? ? , n + 1}') );
            waitforbuttonpress
            hold off
        end

        for i = 2:2:20
            ANUM1es5s(i);
            title('5.2] nodi chebychev convergenza con n = 2,..,20 a f(x) = sin(2*pi*x) ');
            clc
            display( sprintf('Scrivere un programma di tipo function che assegnato un \n vettore di n + 1 nodi (numerati da 1 a n+1) costruisce e disegna una specifica base di Lagrange `j (x), j 2 {1, ? ? ? , n + 1}') );
            waitforbuttonpress
            hold off
        end
    end
    if( esercizio == 6 || esercizio == 0)
        ANUM1es6;
        title('6] nodi uniformi, costruzione polinomio monico');
        clc
        display( sprintf('Scrivere un programma di tipo function che assegnato un \n vettore di n + 1 nodi (numerati da 1 a n+1) costruisce e disegna una specifica base di Lagrange `j (x), j 2 {1, ? ? ? , n + 1}') );
        waitforbuttonpress
        hold off
    end
    if( esercizio == 7 || esercizio == 0)
        ANUM1es7;
        title('7] nodi chebichev, costruzione polinomio monico');
        clc
        display( sprintf('Scrivere un programma di tipo function che assegnato un \n vettore di n + 1 nodi (numerati da 1 a n+1) costruisce e disegna una specifica base di Lagrange `j (x), j 2 {1, ? ? ? , n + 1}') );
        waitforbuttonpress
        hold off
    end
    if( esercizio == 8 || esercizio == 9 || esercizio == 0)
        ANUM1es8(nodes, n);
        title('8-9] nodi chebichev, costruzione polinomio monico');
        clc
        display( sprintf('Scrivere un programma di tipo function che assegnato un \n vettore di n + 1 nodi (numerati da 1 a n+1) costruisce e disegna una specifica base di Lagrange `j (x), j 2 {1, ? ? ? , n + 1}') );
        waitforbuttonpress
        hold off
    end
    if( esercizio == 11 || esercizio == 0)
        ANUM1es11(n);
        title('11] basi di berstein in [0, 1]');
        clc
        display( sprintf('Scrivere un programma di tipo function che assegnato un \n vettore di n + 1 nodi (numerati da 1 a n+1) costruisce e disegna una specifica base di Lagrange `j (x), j 2 {1, ? ? ? , n + 1}') );
        waitforbuttonpress
        hold off
    end
    if( esercizio == 12 || esercizio == 0)
        ANUM1es12(n);
        title('12] polinomio di berstein  f(x) = 1/(25x^2+1)');
        clc
        display( sprintf('Scrivere un programma di tipo function che assegnato un \n vettore di n + 1 nodi (numerati da 1 a n+1) costruisce e disegna una specifica base di Lagrange `j (x), j 2 {1, ? ? ? , n + 1}') );
        waitforbuttonpress
        hold off
    end
    if( esercizio == 13 || esercizio == 0)
        for i = 1
            ANUM1es13(nodes, 3, i);
            clc
            display( sprintf('Scrivere un programma di tipo function che assegnato un \n vettore di n + 1 nodi (numerati da 1 a n+1) costruisce e disegna una specifica base di Lagrange `j (x), j 2 {1, ? ? ? , n + 1}') );
            waitforbuttonpress
            hold off
        end
    end
end