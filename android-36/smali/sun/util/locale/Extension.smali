.class Lsun/util/locale/Extension;
.super Ljava/lang/Object;
.source "Extension.java"


# instance fields
.field private greylist-max-o id:Ljava/lang/String;

.field private final greylist-max-o key:C

.field private greylist-max-o value:Ljava/lang/String;


# direct methods
.method protected constructor greylist-max-o <init>(C)V
    .registers 2
    .param p1, "key"    # C

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-char p1, p0, Lsun/util/locale/Extension;->key:C

    .line 41
    return-void
.end method

.method constructor greylist-max-o <init>(CLjava/lang/String;)V
    .registers 3
    .param p1, "key"    # C
    .param p2, "value"    # Ljava/lang/String;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-char p1, p0, Lsun/util/locale/Extension;->key:C

    .line 45
    invoke-virtual {p0, p2}, Lsun/util/locale/Extension;->setValue(Ljava/lang/String;)V

    .line 46
    return-void
.end method


# virtual methods
.method public greylist-max-o getID()Ljava/lang/String;
    .registers 2

    .line 62
    iget-object v0, p0, Lsun/util/locale/Extension;->id:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getKey()C
    .registers 2

    .line 54
    iget-char v0, p0, Lsun/util/locale/Extension;->key:C

    return v0
.end method

.method public greylist-max-o getValue()Ljava/lang/String;
    .registers 2

    .line 58
    iget-object v0, p0, Lsun/util/locale/Extension;->value:Ljava/lang/String;

    return-object v0
.end method

.method protected greylist-max-o setValue(Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lsun/util/locale/Extension;->value:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-char v1, p0, Lsun/util/locale/Extension;->key:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/util/locale/Extension;->id:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 66
    invoke-virtual {p0}, Lsun/util/locale/Extension;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
