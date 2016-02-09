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
.field private final id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    #@0
    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 157
    iput-object p1, p0, Landroid/icu/impl/ICUService$Key;->id:Ljava/lang/String;

    #@5
    .line 156
    return-void
.end method


# virtual methods
.method public canonicalID()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 172
    iget-object v0, p0, Landroid/icu/impl/ICUService$Key;->id:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public currentDescriptor()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "/"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p0}, Landroid/icu/impl/ICUService$Key;->currentID()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    return-object v0
.end method

.method public currentID()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 180
    invoke-virtual {p0}, Landroid/icu/impl/ICUService$Key;->canonicalID()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public fallback()Z
    .locals 1

    #@0
    .prologue
    .line 204
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public final id()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 164
    iget-object v0, p0, Landroid/icu/impl/ICUService$Key;->id:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public isFallbackOf(Ljava/lang/String;)Z
    .locals 1
    .param p1, "idToCheck"    # Ljava/lang/String;

    #@0
    .prologue
    .line 212
    invoke-virtual {p0}, Landroid/icu/impl/ICUService$Key;->canonicalID()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method
