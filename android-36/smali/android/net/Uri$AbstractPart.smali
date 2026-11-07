.class abstract Landroid/net/Uri$AbstractPart;
.super Ljava/lang/Object;
.source "Uri.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractPart"
.end annotation


# instance fields
.field volatile greylist-max-o decoded:Ljava/lang/String;

.field volatile greylist-max-o encoded:Ljava/lang/String;


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "encoded"    # Ljava/lang/String;
    .param p2, "decoded"    # Ljava/lang/String;

    .line 2051
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2052
    sget-object v0, Landroid/net/Uri$NotCachedHolder;->NOT_CACHED:Ljava/lang/String;

    if-eq p1, v0, :cond_e

    .line 2053
    iput-object p1, p0, Landroid/net/Uri$AbstractPart;->encoded:Ljava/lang/String;

    .line 2054
    sget-object v0, Landroid/net/Uri$NotCachedHolder;->NOT_CACHED:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/Uri$AbstractPart;->decoded:Ljava/lang/String;

    goto :goto_18

    .line 2055
    :cond_e
    sget-object v0, Landroid/net/Uri$NotCachedHolder;->NOT_CACHED:Ljava/lang/String;

    if-eq p2, v0, :cond_19

    .line 2056
    sget-object v0, Landroid/net/Uri$NotCachedHolder;->NOT_CACHED:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/Uri$AbstractPart;->encoded:Ljava/lang/String;

    .line 2057
    iput-object p2, p0, Landroid/net/Uri$AbstractPart;->decoded:Ljava/lang/String;

    .line 2061
    :goto_18
    return-void

    .line 2059
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Neither encoded nor decoded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method final greylist-max-o getDecoded()Ljava/lang/String;
    .registers 3

    .line 2067
    iget-object v0, p0, Landroid/net/Uri$AbstractPart;->decoded:Ljava/lang/String;

    sget-object v1, Landroid/net/Uri$NotCachedHolder;->NOT_CACHED:Ljava/lang/String;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 2068
    .local v0, "hasDecoded":Z
    :goto_9
    if-eqz v0, :cond_e

    iget-object v1, p0, Landroid/net/Uri$AbstractPart;->decoded:Ljava/lang/String;

    goto :goto_16

    :cond_e
    iget-object v1, p0, Landroid/net/Uri$AbstractPart;->encoded:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/Uri$AbstractPart;->decoded:Ljava/lang/String;

    :goto_16
    return-object v1
.end method

.method abstract greylist-max-o getEncoded()Ljava/lang/String;
.end method
