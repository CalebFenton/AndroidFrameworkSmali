.class public Landroid/icu/impl/locale/Extension;
.super Ljava/lang/Object;
.source "Extension.java"


# instance fields
.field private greylist-max-o _key:C

.field protected blacklist _value:Ljava/lang/String;


# direct methods
.method protected constructor blacklist <init>(C)V
    .registers 2
    .param p1, "key"    # C

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-char p1, p0, Landroid/icu/impl/locale/Extension;->_key:C

    .line 22
    return-void
.end method

.method constructor greylist-max-o <init>(CLjava/lang/String;)V
    .registers 3
    .param p1, "key"    # C
    .param p2, "value"    # Ljava/lang/String;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-char p1, p0, Landroid/icu/impl/locale/Extension;->_key:C

    .line 26
    iput-object p2, p0, Landroid/icu/impl/locale/Extension;->_value:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public blacklist getID()Ljava/lang/String;
    .registers 3

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-char v1, p0, Landroid/icu/impl/locale/Extension;->_key:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/impl/locale/Extension;->_value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getKey()C
    .registers 2

    .line 30
    iget-char v0, p0, Landroid/icu/impl/locale/Extension;->_key:C

    return v0
.end method

.method public blacklist getValue()Ljava/lang/String;
    .registers 2

    .line 34
    iget-object v0, p0, Landroid/icu/impl/locale/Extension;->_value:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 43
    invoke-virtual {p0}, Landroid/icu/impl/locale/Extension;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
