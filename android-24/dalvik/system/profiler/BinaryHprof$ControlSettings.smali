.class public final enum Ldalvik/system/profiler/BinaryHprof$ControlSettings;
.super Ljava/lang/Enum;
.source "BinaryHprof.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/profiler/BinaryHprof;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ControlSettings"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ldalvik/system/profiler/BinaryHprof$ControlSettings;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ldalvik/system/profiler/BinaryHprof$ControlSettings;

.field public static final enum ALLOC_TRACES:Ldalvik/system/profiler/BinaryHprof$ControlSettings;

.field public static final enum CPU_SAMPLING:Ldalvik/system/profiler/BinaryHprof$ControlSettings;


# instance fields
.field public final bitmask:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v2, 0x1

    #@3
    .line 138
    new-instance v0, Ldalvik/system/profiler/BinaryHprof$ControlSettings;

    #@5
    const-string/jumbo v1, "ALLOC_TRACES"

    #@8
    invoke-direct {v0, v1, v3, v2}, Ldalvik/system/profiler/BinaryHprof$ControlSettings;-><init>(Ljava/lang/String;II)V

    #@b
    sput-object v0, Ldalvik/system/profiler/BinaryHprof$ControlSettings;->ALLOC_TRACES:Ldalvik/system/profiler/BinaryHprof$ControlSettings;

    #@d
    .line 139
    new-instance v0, Ldalvik/system/profiler/BinaryHprof$ControlSettings;

    #@f
    const-string/jumbo v1, "CPU_SAMPLING"

    #@12
    invoke-direct {v0, v1, v2, v4}, Ldalvik/system/profiler/BinaryHprof$ControlSettings;-><init>(Ljava/lang/String;II)V

    #@15
    sput-object v0, Ldalvik/system/profiler/BinaryHprof$ControlSettings;->CPU_SAMPLING:Ldalvik/system/profiler/BinaryHprof$ControlSettings;

    #@17
    .line 137
    new-array v0, v4, [Ldalvik/system/profiler/BinaryHprof$ControlSettings;

    #@19
    sget-object v1, Ldalvik/system/profiler/BinaryHprof$ControlSettings;->ALLOC_TRACES:Ldalvik/system/profiler/BinaryHprof$ControlSettings;

    #@1b
    aput-object v1, v0, v3

    #@1d
    sget-object v1, Ldalvik/system/profiler/BinaryHprof$ControlSettings;->CPU_SAMPLING:Ldalvik/system/profiler/BinaryHprof$ControlSettings;

    #@1f
    aput-object v1, v0, v2

    #@21
    sput-object v0, Ldalvik/system/profiler/BinaryHprof$ControlSettings;->$VALUES:[Ldalvik/system/profiler/BinaryHprof$ControlSettings;

    #@23
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "bitmask"    # I

    #@0
    .prologue
    .line 143
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 144
    iput p3, p0, Ldalvik/system/profiler/BinaryHprof$ControlSettings;->bitmask:I

    #@5
    .line 143
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ldalvik/system/profiler/BinaryHprof$ControlSettings;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 137
    const-class v0, Ldalvik/system/profiler/BinaryHprof$ControlSettings;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ldalvik/system/profiler/BinaryHprof$ControlSettings;

    #@8
    return-object v0
.end method

.method public static values()[Ldalvik/system/profiler/BinaryHprof$ControlSettings;
    .locals 1

    #@0
    .prologue
    .line 137
    sget-object v0, Ldalvik/system/profiler/BinaryHprof$ControlSettings;->$VALUES:[Ldalvik/system/profiler/BinaryHprof$ControlSettings;

    #@2
    return-object v0
.end method
