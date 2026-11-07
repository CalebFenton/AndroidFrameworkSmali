.class Landroid/media/AudioMetadata$1;
.super Ljava/lang/Object;
.source "AudioMetadata.java"

# interfaces
.implements Landroid/media/AudioMetadata$Key;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/AudioMetadata;->createKey(Ljava/lang/String;Ljava/lang/Class;)Landroid/media/AudioMetadata$Key;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/media/AudioMetadata$Key<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic blacklist val$name:Ljava/lang/String;

.field final synthetic blacklist val$type:Ljava/lang/Class;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 277
    iput-object p1, p0, Landroid/media/AudioMetadata$1;->val$name:Ljava/lang/String;

    iput-object p2, p0, Landroid/media/AudioMetadata$1;->val$type:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    iget-object p1, p0, Landroid/media/AudioMetadata$1;->val$name:Ljava/lang/String;

    iput-object p1, p0, Landroid/media/AudioMetadata$1;->mName:Ljava/lang/String;

    .line 279
    iget-object p1, p0, Landroid/media/AudioMetadata$1;->val$type:Ljava/lang/Class;

    iput-object p1, p0, Landroid/media/AudioMetadata$1;->mType:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 298
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 299
    return v0

    .line 301
    :cond_4
    instance-of v1, p1, Landroid/media/AudioMetadata$Key;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 302
    return v2

    .line 304
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/media/AudioMetadata$Key;

    .line 305
    .local v1, "other":Landroid/media/AudioMetadata$Key;, "Landroid/media/AudioMetadata$Key<*>;"
    iget-object v3, p0, Landroid/media/AudioMetadata$1;->mName:Ljava/lang/String;

    invoke-interface {v1}, Landroid/media/AudioMetadata$Key;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    iget-object v3, p0, Landroid/media/AudioMetadata$1;->mType:Ljava/lang/Class;

    invoke-interface {v1}, Landroid/media/AudioMetadata$Key;->getValueClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    goto :goto_27

    :cond_26
    move v0, v2

    :goto_27
    return v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 2

    .line 284
    iget-object v0, p0, Landroid/media/AudioMetadata$1;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getValueClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 290
    iget-object v0, p0, Landroid/media/AudioMetadata$1;->mType:Ljava/lang/Class;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 310
    iget-object v0, p0, Landroid/media/AudioMetadata$1;->mName:Ljava/lang/String;

    iget-object v1, p0, Landroid/media/AudioMetadata$1;->mType:Ljava/lang/Class;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
