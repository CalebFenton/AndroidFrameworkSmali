.class Ljava/lang/Character$CharacterCache;
.super Ljava/lang/Object;
.source "Character.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/Character;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CharacterCache"
.end annotation


# static fields
.field static final cache:[Ljava/lang/Character;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 4388
    const/16 v1, 0x80

    #@2
    new-array v1, v1, [Ljava/lang/Character;

    #@4
    sput-object v1, Ljava/lang/Character$CharacterCache;->cache:[Ljava/lang/Character;

    #@6
    .line 4391
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    sget-object v1, Ljava/lang/Character$CharacterCache;->cache:[Ljava/lang/Character;

    #@9
    array-length v1, v1

    #@a
    if-ge v0, v1, :cond_0

    #@c
    .line 4392
    sget-object v1, Ljava/lang/Character$CharacterCache;->cache:[Ljava/lang/Character;

    #@e
    new-instance v2, Ljava/lang/Character;

    #@10
    int-to-char v3, v0

    #@11
    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    #@14
    aput-object v2, v1, v0

    #@16
    .line 4391
    add-int/lit8 v0, v0, 0x1

    #@18
    goto :goto_0

    #@19
    .line 4385
    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 4386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
