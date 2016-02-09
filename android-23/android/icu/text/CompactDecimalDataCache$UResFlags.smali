.class final enum Landroid/icu/text/CompactDecimalDataCache$UResFlags;
.super Ljava/lang/Enum;
.source "CompactDecimalDataCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/CompactDecimalDataCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "UResFlags"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/text/CompactDecimalDataCache$UResFlags;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/CompactDecimalDataCache$UResFlags;

.field public static final enum ANY:Landroid/icu/text/CompactDecimalDataCache$UResFlags;

.field public static final enum NOT_ROOT:Landroid/icu/text/CompactDecimalDataCache$UResFlags;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 103
    new-instance v0, Landroid/icu/text/CompactDecimalDataCache$UResFlags;

    #@4
    const-string/jumbo v1, "ANY"

    #@7
    invoke-direct {v0, v1, v2}, Landroid/icu/text/CompactDecimalDataCache$UResFlags;-><init>(Ljava/lang/String;I)V

    #@a
    sput-object v0, Landroid/icu/text/CompactDecimalDataCache$UResFlags;->ANY:Landroid/icu/text/CompactDecimalDataCache$UResFlags;

    #@c
    new-instance v0, Landroid/icu/text/CompactDecimalDataCache$UResFlags;

    #@e
    const-string/jumbo v1, "NOT_ROOT"

    #@11
    invoke-direct {v0, v1, v3}, Landroid/icu/text/CompactDecimalDataCache$UResFlags;-><init>(Ljava/lang/String;I)V

    #@14
    .line 104
    sput-object v0, Landroid/icu/text/CompactDecimalDataCache$UResFlags;->NOT_ROOT:Landroid/icu/text/CompactDecimalDataCache$UResFlags;

    #@16
    .line 102
    const/4 v0, 0x2

    #@17
    new-array v0, v0, [Landroid/icu/text/CompactDecimalDataCache$UResFlags;

    #@19
    sget-object v1, Landroid/icu/text/CompactDecimalDataCache$UResFlags;->ANY:Landroid/icu/text/CompactDecimalDataCache$UResFlags;

    #@1b
    aput-object v1, v0, v2

    #@1d
    sget-object v1, Landroid/icu/text/CompactDecimalDataCache$UResFlags;->NOT_ROOT:Landroid/icu/text/CompactDecimalDataCache$UResFlags;

    #@1f
    aput-object v1, v0, v3

    #@21
    sput-object v0, Landroid/icu/text/CompactDecimalDataCache$UResFlags;->$VALUES:[Landroid/icu/text/CompactDecimalDataCache$UResFlags;

    #@23
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/CompactDecimalDataCache$UResFlags;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 102
    const-class v0, Landroid/icu/text/CompactDecimalDataCache$UResFlags;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/text/CompactDecimalDataCache$UResFlags;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/icu/text/CompactDecimalDataCache$UResFlags;
    .locals 1

    #@0
    .prologue
    .line 102
    sget-object v0, Landroid/icu/text/CompactDecimalDataCache$UResFlags;->$VALUES:[Landroid/icu/text/CompactDecimalDataCache$UResFlags;

    #@2
    return-object v0
.end method
