.class final Lcom/android/server/am/ActivityManagerService$PriorityState;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PriorityState"
.end annotation


# instance fields
.field private prevPriority:I

.field private regionCounter:I


# direct methods
.method static synthetic -get0(Lcom/android/server/am/ActivityManagerService$PriorityState;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$PriorityState;->prevPriority:I

    #@2
    return v0
.end method

.method static synthetic -get1(Lcom/android/server/am/ActivityManagerService$PriorityState;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$PriorityState;->regionCounter:I

    #@2
    return v0
.end method

.method static synthetic -set0(Lcom/android/server/am/ActivityManagerService$PriorityState;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/am/ActivityManagerService$PriorityState;->prevPriority:I

    #@2
    return p1
.end method

.method static synthetic -set1(Lcom/android/server/am/ActivityManagerService$PriorityState;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/am/ActivityManagerService$PriorityState;->regionCounter:I

    #@2
    return p1
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 648
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 652
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lcom/android/server/am/ActivityManagerService$PriorityState;->regionCounter:I

    #@6
    .line 655
    const/high16 v0, -0x80000000

    #@8
    iput v0, p0, Lcom/android/server/am/ActivityManagerService$PriorityState;->prevPriority:I

    #@a
    .line 648
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/ActivityManagerService$PriorityState;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerService$PriorityState;-><init>()V

    #@3
    return-void
.end method
