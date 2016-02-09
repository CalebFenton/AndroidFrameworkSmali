.class final enum Ljava/nio/IoVec$Direction;
.super Ljava/lang/Enum;
.source "IoVec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/IoVec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/nio/IoVec$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/nio/IoVec$Direction;

.field public static final enum READV:Ljava/nio/IoVec$Direction;

.field public static final enum WRITEV:Ljava/nio/IoVec$Direction;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 29
    new-instance v0, Ljava/nio/IoVec$Direction;

    #@4
    const-string/jumbo v1, "READV"

    #@7
    invoke-direct {v0, v1, v2}, Ljava/nio/IoVec$Direction;-><init>(Ljava/lang/String;I)V

    #@a
    sput-object v0, Ljava/nio/IoVec$Direction;->READV:Ljava/nio/IoVec$Direction;

    #@c
    new-instance v0, Ljava/nio/IoVec$Direction;

    #@e
    const-string/jumbo v1, "WRITEV"

    #@11
    invoke-direct {v0, v1, v3}, Ljava/nio/IoVec$Direction;-><init>(Ljava/lang/String;I)V

    #@14
    sput-object v0, Ljava/nio/IoVec$Direction;->WRITEV:Ljava/nio/IoVec$Direction;

    #@16
    const/4 v0, 0x2

    #@17
    new-array v0, v0, [Ljava/nio/IoVec$Direction;

    #@19
    sget-object v1, Ljava/nio/IoVec$Direction;->READV:Ljava/nio/IoVec$Direction;

    #@1b
    aput-object v1, v0, v2

    #@1d
    sget-object v1, Ljava/nio/IoVec$Direction;->WRITEV:Ljava/nio/IoVec$Direction;

    #@1f
    aput-object v1, v0, v3

    #@21
    sput-object v0, Ljava/nio/IoVec$Direction;->$VALUES:[Ljava/nio/IoVec$Direction;

    #@23
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/nio/IoVec$Direction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 29
    const-class v0, Ljava/nio/IoVec$Direction;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/nio/IoVec$Direction;

    #@8
    return-object v0
.end method

.method public static values()[Ljava/nio/IoVec$Direction;
    .locals 1

    #@0
    .prologue
    .line 29
    sget-object v0, Ljava/nio/IoVec$Direction;->$VALUES:[Ljava/nio/IoVec$Direction;

    #@2
    return-object v0
.end method
