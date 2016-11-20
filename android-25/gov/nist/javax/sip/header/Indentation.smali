.class Lgov/nist/javax/sip/header/Indentation;
.super Ljava/lang/Object;
.source "Indentation.java"


# instance fields
.field private indentation:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 45
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lgov/nist/javax/sip/header/Indentation;->indentation:I

    #@6
    .line 44
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 0
    .param p1, "initval"    # I

    #@0
    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 55
    iput p1, p0, Lgov/nist/javax/sip/header/Indentation;->indentation:I

    #@5
    .line 54
    return-void
.end method


# virtual methods
.method protected decrement()V
    .locals 1

    #@0
    .prologue
    .line 88
    iget v0, p0, Lgov/nist/javax/sip/header/Indentation;->indentation:I

    #@2
    add-int/lit8 v0, v0, -0x1

    #@4
    iput v0, p0, Lgov/nist/javax/sip/header/Indentation;->indentation:I

    #@6
    .line 87
    return-void
.end method

.method protected getCount()I
    .locals 1

    #@0
    .prologue
    .line 74
    iget v0, p0, Lgov/nist/javax/sip/header/Indentation;->indentation:I

    #@2
    return v0
.end method

.method protected getIndentation()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 97
    iget v1, p0, Lgov/nist/javax/sip/header/Indentation;->indentation:I

    #@2
    new-array v0, v1, [C

    #@4
    .line 98
    .local v0, "chars":[C
    const/16 v1, 0x20

    #@6
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    #@9
    .line 99
    new-instance v1, Ljava/lang/String;

    #@b
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    #@e
    return-object v1
.end method

.method protected increment()V
    .locals 1

    #@0
    .prologue
    .line 81
    iget v0, p0, Lgov/nist/javax/sip/header/Indentation;->indentation:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    iput v0, p0, Lgov/nist/javax/sip/header/Indentation;->indentation:I

    #@6
    .line 80
    return-void
.end method

.method protected setIndentation(I)V
    .locals 0
    .param p1, "initval"    # I

    #@0
    .prologue
    .line 65
    iput p1, p0, Lgov/nist/javax/sip/header/Indentation;->indentation:I

    #@2
    .line 64
    return-void
.end method
