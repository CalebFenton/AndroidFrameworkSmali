.class final Landroid/app/ActivityThread$ProviderKey;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProviderKey"
.end annotation


# instance fields
.field final authority:Ljava/lang/String;

.field final userId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 240
    iput-object p1, p0, Landroid/app/ActivityThread$ProviderKey;->authority:Ljava/lang/String;

    #@5
    .line 241
    iput p2, p0, Landroid/app/ActivityThread$ProviderKey;->userId:I

    #@7
    .line 239
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 246
    instance-of v2, p1, Landroid/app/ActivityThread$ProviderKey;

    #@3
    if-eqz v2, :cond_1

    #@5
    move-object v0, p1

    #@6
    .line 247
    check-cast v0, Landroid/app/ActivityThread$ProviderKey;

    #@8
    .line 248
    .local v0, "other":Landroid/app/ActivityThread$ProviderKey;
    iget-object v2, p0, Landroid/app/ActivityThread$ProviderKey;->authority:Ljava/lang/String;

    #@a
    iget-object v3, v0, Landroid/app/ActivityThread$ProviderKey;->authority:Ljava/lang/String;

    #@c
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_0

    #@12
    iget v2, p0, Landroid/app/ActivityThread$ProviderKey;->userId:I

    #@14
    iget v3, v0, Landroid/app/ActivityThread$ProviderKey;->userId:I

    #@16
    if-ne v2, v3, :cond_0

    #@18
    const/4 v1, 0x1

    #@19
    :cond_0
    return v1

    #@1a
    .line 250
    .end local v0    # "other":Landroid/app/ActivityThread$ProviderKey;
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 255
    iget-object v0, p0, Landroid/app/ActivityThread$ProviderKey;->authority:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/app/ActivityThread$ProviderKey;->authority:Ljava/lang/String;

    #@6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@9
    move-result v0

    #@a
    :goto_0
    iget v1, p0, Landroid/app/ActivityThread$ProviderKey;->userId:I

    #@c
    xor-int/2addr v0, v1

    #@d
    return v0

    #@e
    :cond_0
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method
