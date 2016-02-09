.class public final enum Ldalvik/system/profiler/HprofData$ThreadEventType;
.super Ljava/lang/Enum;
.source "HprofData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/profiler/HprofData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ThreadEventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ldalvik/system/profiler/HprofData$ThreadEventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ldalvik/system/profiler/HprofData$ThreadEventType;

.field public static final enum END:Ldalvik/system/profiler/HprofData$ThreadEventType;

.field public static final enum START:Ldalvik/system/profiler/HprofData$ThreadEventType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 43
    new-instance v0, Ldalvik/system/profiler/HprofData$ThreadEventType;

    #@4
    const-string/jumbo v1, "START"

    #@7
    invoke-direct {v0, v1, v2}, Ldalvik/system/profiler/HprofData$ThreadEventType;-><init>(Ljava/lang/String;I)V

    #@a
    sput-object v0, Ldalvik/system/profiler/HprofData$ThreadEventType;->START:Ldalvik/system/profiler/HprofData$ThreadEventType;

    #@c
    new-instance v0, Ldalvik/system/profiler/HprofData$ThreadEventType;

    #@e
    const-string/jumbo v1, "END"

    #@11
    invoke-direct {v0, v1, v3}, Ldalvik/system/profiler/HprofData$ThreadEventType;-><init>(Ljava/lang/String;I)V

    #@14
    sput-object v0, Ldalvik/system/profiler/HprofData$ThreadEventType;->END:Ldalvik/system/profiler/HprofData$ThreadEventType;

    #@16
    const/4 v0, 0x2

    #@17
    new-array v0, v0, [Ldalvik/system/profiler/HprofData$ThreadEventType;

    #@19
    sget-object v1, Ldalvik/system/profiler/HprofData$ThreadEventType;->START:Ldalvik/system/profiler/HprofData$ThreadEventType;

    #@1b
    aput-object v1, v0, v2

    #@1d
    sget-object v1, Ldalvik/system/profiler/HprofData$ThreadEventType;->END:Ldalvik/system/profiler/HprofData$ThreadEventType;

    #@1f
    aput-object v1, v0, v3

    #@21
    sput-object v0, Ldalvik/system/profiler/HprofData$ThreadEventType;->$VALUES:[Ldalvik/system/profiler/HprofData$ThreadEventType;

    #@23
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ldalvik/system/profiler/HprofData$ThreadEventType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 43
    const-class v0, Ldalvik/system/profiler/HprofData$ThreadEventType;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ldalvik/system/profiler/HprofData$ThreadEventType;

    #@8
    return-object v0
.end method

.method public static values()[Ldalvik/system/profiler/HprofData$ThreadEventType;
    .locals 1

    #@0
    .prologue
    .line 43
    sget-object v0, Ldalvik/system/profiler/HprofData$ThreadEventType;->$VALUES:[Ldalvik/system/profiler/HprofData$ThreadEventType;

    #@2
    return-object v0
.end method
