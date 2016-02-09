.class public Landroid/icu/impl/locale/Extension;
.super Ljava/lang/Object;
.source "Extension.java"


# instance fields
.field private _key:C

.field protected _value:Ljava/lang/String;


# direct methods
.method protected constructor <init>(C)V
    .locals 0
    .param p1, "key"    # C

    #@0
    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 15
    iput-char p1, p0, Landroid/icu/impl/locale/Extension;->_key:C

    #@5
    .line 14
    return-void
.end method

.method constructor <init>(CLjava/lang/String;)V
    .locals 0
    .param p1, "key"    # C
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 19
    iput-char p1, p0, Landroid/icu/impl/locale/Extension;->_key:C

    #@5
    .line 20
    iput-object p2, p0, Landroid/icu/impl/locale/Extension;->_value:Ljava/lang/String;

    #@7
    .line 18
    return-void
.end method


# virtual methods
.method public getID()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-char v1, p0, Landroid/icu/impl/locale/Extension;->_key:C

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    const-string/jumbo v1, "-"

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    iget-object v1, p0, Landroid/icu/impl/locale/Extension;->_value:Ljava/lang/String;

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    return-object v0
.end method

.method public getKey()C
    .locals 1

    #@0
    .prologue
    .line 24
    iget-char v0, p0, Landroid/icu/impl/locale/Extension;->_key:C

    #@2
    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 28
    iget-object v0, p0, Landroid/icu/impl/locale/Extension;->_value:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 36
    invoke-virtual {p0}, Landroid/icu/impl/locale/Extension;->getID()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
