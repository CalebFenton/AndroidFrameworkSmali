.class public final enum Ljava/lang/Thread$State;
.super Ljava/lang/Enum;
.source "Thread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/lang/Thread$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/lang/Thread$State;

.field public static final enum BLOCKED:Ljava/lang/Thread$State;

.field public static final enum NEW:Ljava/lang/Thread$State;

.field public static final enum RUNNABLE:Ljava/lang/Thread$State;

.field public static final enum TERMINATED:Ljava/lang/Thread$State;

.field public static final enum TIMED_WAITING:Ljava/lang/Thread$State;

.field public static final enum WAITING:Ljava/lang/Thread$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x4

    #@1
    const/4 v6, 0x3

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v4, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    .line 79
    new-instance v0, Ljava/lang/Thread$State;

    #@7
    const-string/jumbo v1, "NEW"

    #@a
    invoke-direct {v0, v1, v3}, Ljava/lang/Thread$State;-><init>(Ljava/lang/String;I)V

    #@d
    .line 82
    sput-object v0, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    #@f
    .line 83
    new-instance v0, Ljava/lang/Thread$State;

    #@11
    const-string/jumbo v1, "RUNNABLE"

    #@14
    invoke-direct {v0, v1, v4}, Ljava/lang/Thread$State;-><init>(Ljava/lang/String;I)V

    #@17
    .line 86
    sput-object v0, Ljava/lang/Thread$State;->RUNNABLE:Ljava/lang/Thread$State;

    #@19
    .line 87
    new-instance v0, Ljava/lang/Thread$State;

    #@1b
    const-string/jumbo v1, "BLOCKED"

    #@1e
    invoke-direct {v0, v1, v5}, Ljava/lang/Thread$State;-><init>(Ljava/lang/String;I)V

    #@21
    .line 90
    sput-object v0, Ljava/lang/Thread$State;->BLOCKED:Ljava/lang/Thread$State;

    #@23
    .line 91
    new-instance v0, Ljava/lang/Thread$State;

    #@25
    const-string/jumbo v1, "WAITING"

    #@28
    invoke-direct {v0, v1, v6}, Ljava/lang/Thread$State;-><init>(Ljava/lang/String;I)V

    #@2b
    .line 94
    sput-object v0, Ljava/lang/Thread$State;->WAITING:Ljava/lang/Thread$State;

    #@2d
    .line 95
    new-instance v0, Ljava/lang/Thread$State;

    #@2f
    const-string/jumbo v1, "TIMED_WAITING"

    #@32
    invoke-direct {v0, v1, v7}, Ljava/lang/Thread$State;-><init>(Ljava/lang/String;I)V

    #@35
    .line 98
    sput-object v0, Ljava/lang/Thread$State;->TIMED_WAITING:Ljava/lang/Thread$State;

    #@37
    .line 99
    new-instance v0, Ljava/lang/Thread$State;

    #@39
    const-string/jumbo v1, "TERMINATED"

    #@3c
    const/4 v2, 0x5

    #@3d
    invoke-direct {v0, v1, v2}, Ljava/lang/Thread$State;-><init>(Ljava/lang/String;I)V

    #@40
    .line 102
    sput-object v0, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    #@42
    .line 78
    const/4 v0, 0x6

    #@43
    new-array v0, v0, [Ljava/lang/Thread$State;

    #@45
    sget-object v1, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    #@47
    aput-object v1, v0, v3

    #@49
    sget-object v1, Ljava/lang/Thread$State;->RUNNABLE:Ljava/lang/Thread$State;

    #@4b
    aput-object v1, v0, v4

    #@4d
    sget-object v1, Ljava/lang/Thread$State;->BLOCKED:Ljava/lang/Thread$State;

    #@4f
    aput-object v1, v0, v5

    #@51
    sget-object v1, Ljava/lang/Thread$State;->WAITING:Ljava/lang/Thread$State;

    #@53
    aput-object v1, v0, v6

    #@55
    sget-object v1, Ljava/lang/Thread$State;->TIMED_WAITING:Ljava/lang/Thread$State;

    #@57
    aput-object v1, v0, v7

    #@59
    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    #@5b
    const/4 v2, 0x5

    #@5c
    aput-object v1, v0, v2

    #@5e
    sput-object v0, Ljava/lang/Thread$State;->$VALUES:[Ljava/lang/Thread$State;

    #@60
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/lang/Thread$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 78
    const-class v0, Ljava/lang/Thread$State;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/Thread$State;

    #@8
    return-object v0
.end method

.method public static values()[Ljava/lang/Thread$State;
    .locals 1

    #@0
    .prologue
    .line 78
    sget-object v0, Ljava/lang/Thread$State;->$VALUES:[Ljava/lang/Thread$State;

    #@2
    return-object v0
.end method
