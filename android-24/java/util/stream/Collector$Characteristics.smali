.class public final enum Ljava/util/stream/Collector$Characteristics;
.super Ljava/lang/Enum;
.source "Collector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Collector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Characteristics"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/util/stream/Collector$Characteristics;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/util/stream/Collector$Characteristics;

.field public static final enum CONCURRENT:Ljava/util/stream/Collector$Characteristics;

.field public static final enum IDENTITY_FINISH:Ljava/util/stream/Collector$Characteristics;

.field public static final enum UNORDERED:Ljava/util/stream/Collector$Characteristics;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 315
    new-instance v0, Ljava/util/stream/Collector$Characteristics;

    #@5
    const-string/jumbo v1, "CONCURRENT"

    #@8
    invoke-direct {v0, v1, v2}, Ljava/util/stream/Collector$Characteristics;-><init>(Ljava/lang/String;I)V

    #@b
    .line 325
    sput-object v0, Ljava/util/stream/Collector$Characteristics;->CONCURRENT:Ljava/util/stream/Collector$Characteristics;

    #@d
    .line 327
    new-instance v0, Ljava/util/stream/Collector$Characteristics;

    #@f
    const-string/jumbo v1, "UNORDERED"

    #@12
    invoke-direct {v0, v1, v3}, Ljava/util/stream/Collector$Characteristics;-><init>(Ljava/lang/String;I)V

    #@15
    .line 332
    sput-object v0, Ljava/util/stream/Collector$Characteristics;->UNORDERED:Ljava/util/stream/Collector$Characteristics;

    #@17
    .line 334
    new-instance v0, Ljava/util/stream/Collector$Characteristics;

    #@19
    const-string/jumbo v1, "IDENTITY_FINISH"

    #@1c
    invoke-direct {v0, v1, v4}, Ljava/util/stream/Collector$Characteristics;-><init>(Ljava/lang/String;I)V

    #@1f
    .line 339
    sput-object v0, Ljava/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava/util/stream/Collector$Characteristics;

    #@21
    .line 314
    const/4 v0, 0x3

    #@22
    new-array v0, v0, [Ljava/util/stream/Collector$Characteristics;

    #@24
    sget-object v1, Ljava/util/stream/Collector$Characteristics;->CONCURRENT:Ljava/util/stream/Collector$Characteristics;

    #@26
    aput-object v1, v0, v2

    #@28
    sget-object v1, Ljava/util/stream/Collector$Characteristics;->UNORDERED:Ljava/util/stream/Collector$Characteristics;

    #@2a
    aput-object v1, v0, v3

    #@2c
    sget-object v1, Ljava/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava/util/stream/Collector$Characteristics;

    #@2e
    aput-object v1, v0, v4

    #@30
    sput-object v0, Ljava/util/stream/Collector$Characteristics;->$VALUES:[Ljava/util/stream/Collector$Characteristics;

    #@32
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 314
    .local p0, "this":Ljava/util/stream/Collector$Characteristics;, "Ljava/util/stream/Collector<TT;TA;TR;>.Characteristics;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/util/stream/Collector$Characteristics;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 314
    const-class v0, Ljava/util/stream/Collector$Characteristics;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/stream/Collector$Characteristics;

    #@8
    return-object v0
.end method

.method public static values()[Ljava/util/stream/Collector$Characteristics;
    .locals 1

    #@0
    .prologue
    .line 314
    sget-object v0, Ljava/util/stream/Collector$Characteristics;->$VALUES:[Ljava/util/stream/Collector$Characteristics;

    #@2
    return-object v0
.end method
