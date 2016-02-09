.class public Landroid/test/TestRunner$IntermediateTime;
.super Ljava/lang/Object;
.source "TestRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/test/TestRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntermediateTime"
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public timeInNS:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "timeInNS"    # J

    #@0
    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 139
    iput-object p1, p0, Landroid/test/TestRunner$IntermediateTime;->name:Ljava/lang/String;

    #@5
    .line 140
    iput-wide p2, p0, Landroid/test/TestRunner$IntermediateTime;->timeInNS:J

    #@7
    .line 138
    return-void
.end method
