.class Landroid/net/Uri$Part$EmptyPart;
.super Landroid/net/Uri$Part;
.source "Uri.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Uri$Part;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptyPart"
.end annotation


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "value"    # Ljava/lang/String;

    .line 2152
    const/4 v0, 0x0

    invoke-direct {p0, p1, p1, v0}, Landroid/net/Uri$Part;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri-IA;)V

    .line 2153
    if-eqz p1, :cond_26

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_26

    .line 2154
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected empty value, got: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2157
    :cond_26
    :goto_26
    iput-object p1, p0, Landroid/net/Uri$Part$EmptyPart;->decoded:Ljava/lang/String;

    iput-object p1, p0, Landroid/net/Uri$Part$EmptyPart;->encoded:Ljava/lang/String;

    .line 2158
    return-void
.end method


# virtual methods
.method greylist-max-o isEmpty()Z
    .registers 2

    .line 2162
    const/4 v0, 0x1

    return v0
.end method
