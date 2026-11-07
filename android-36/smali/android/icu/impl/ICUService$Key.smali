.class public Landroid/icu/impl/ICUService$Key;
.super Ljava/lang/Object;
.source "ICUService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Key"
.end annotation


# instance fields
.field private final blacklist id:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "id"    # Ljava/lang/String;

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object p1, p0, Landroid/icu/impl/ICUService$Key;->id:Ljava/lang/String;

    .line 163
    return-void
.end method


# virtual methods
.method public blacklist canonicalID()Ljava/lang/String;
    .registers 2

    .line 177
    iget-object v0, p0, Landroid/icu/impl/ICUService$Key;->id:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist currentDescriptor()Ljava/lang/String;
    .registers 3

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/icu/impl/ICUService$Key;->currentID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist currentID()Ljava/lang/String;
    .registers 2

    .line 185
    invoke-virtual {p0}, Landroid/icu/impl/ICUService$Key;->canonicalID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist fallback()Z
    .registers 2

    .line 209
    const/4 v0, 0x0

    return v0
.end method

.method public final blacklist id()Ljava/lang/String;
    .registers 2

    .line 169
    iget-object v0, p0, Landroid/icu/impl/ICUService$Key;->id:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isFallbackOf(Ljava/lang/String;)Z
    .registers 3
    .param p1, "idToCheck"    # Ljava/lang/String;

    .line 217
    invoke-virtual {p0}, Landroid/icu/impl/ICUService$Key;->canonicalID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
