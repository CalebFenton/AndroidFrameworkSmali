.class abstract Landroid/security/keystore/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;
    .locals 1
    .param p0, "value"    # Ljava/util/Date;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 30
    if-eqz p0, :cond_0

    #@3
    invoke-virtual {p0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Ljava/util/Date;

    #@9
    :cond_0
    return-object v0
.end method
