.class Ljava/util/ResourceBundle$1;
.super Ljava/util/ResourceBundle;
.source "ResourceBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ResourceBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 336
    invoke-direct {p0}, Ljava/util/ResourceBundle;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api getKeys()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 337
    const/4 v0, 0x0

    return-object v0
.end method

.method protected whitelist test-api handleGetObject(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 338
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 339
    const-string v0, "NONEXISTENT_BUNDLE"

    return-object v0
.end method
