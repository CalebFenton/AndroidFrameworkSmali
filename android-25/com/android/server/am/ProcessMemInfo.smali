.class public Lcom/android/server/am/ProcessMemInfo;
.super Ljava/lang/Object;
.source "ProcessMemInfo.java"


# instance fields
.field final adjReason:Ljava/lang/String;

.field final adjType:Ljava/lang/String;

.field memtrack:J

.field final name:Ljava/lang/String;

.field final oomAdj:I

.field final pid:I

.field final procState:I

.field pss:J


# direct methods
.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "_name"    # Ljava/lang/String;
    .param p2, "_pid"    # I
    .param p3, "_oomAdj"    # I
    .param p4, "_procState"    # I
    .param p5, "_adjType"    # Ljava/lang/String;
    .param p6, "_adjReason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 31
    iput-object p1, p0, Lcom/android/server/am/ProcessMemInfo;->name:Ljava/lang/String;

    #@5
    .line 32
    iput p2, p0, Lcom/android/server/am/ProcessMemInfo;->pid:I

    #@7
    .line 33
    iput p3, p0, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    #@9
    .line 34
    iput p4, p0, Lcom/android/server/am/ProcessMemInfo;->procState:I

    #@b
    .line 35
    iput-object p5, p0, Lcom/android/server/am/ProcessMemInfo;->adjType:Ljava/lang/String;

    #@d
    .line 36
    iput-object p6, p0, Lcom/android/server/am/ProcessMemInfo;->adjReason:Ljava/lang/String;

    #@f
    .line 30
    return-void
.end method
