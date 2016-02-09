.class Landroid/os/StrictMode$InstanceCountViolation;
.super Ljava/lang/Throwable;
.source "StrictMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceCountViolation"
.end annotation


# static fields
.field private static final FAKE_STACK:[Ljava/lang/StackTraceElement;


# instance fields
.field final mClass:Ljava/lang/Class;

.field final mInstances:J

.field final mLimit:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 2495
    new-array v0, v5, [Ljava/lang/StackTraceElement;

    #@3
    .line 2496
    new-instance v1, Ljava/lang/StackTraceElement;

    #@5
    const-string/jumbo v2, "android.os.StrictMode"

    #@8
    const-string/jumbo v3, "setClassInstanceLimit"

    #@b
    .line 2497
    const-string/jumbo v4, "StrictMode.java"

    #@e
    .line 2496
    invoke-direct {v1, v2, v3, v4, v5}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@11
    const/4 v2, 0x0

    #@12
    aput-object v1, v0, v2

    #@14
    .line 2495
    sput-object v0, Landroid/os/StrictMode$InstanceCountViolation;->FAKE_STACK:[Ljava/lang/StackTraceElement;

    #@16
    .line 2490
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;JI)V
    .locals 2
    .param p1, "klass"    # Ljava/lang/Class;
    .param p2, "instances"    # J
    .param p4, "limit"    # I

    #@0
    .prologue
    .line 2501
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string/jumbo v1, "; instances="

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    const-string/jumbo v1, "; limit="

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    invoke-direct {p0, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    #@2a
    .line 2502
    sget-object v0, Landroid/os/StrictMode$InstanceCountViolation;->FAKE_STACK:[Ljava/lang/StackTraceElement;

    #@2c
    invoke-virtual {p0, v0}, Landroid/os/StrictMode$InstanceCountViolation;->setStackTrace([Ljava/lang/StackTraceElement;)V

    #@2f
    .line 2503
    iput-object p1, p0, Landroid/os/StrictMode$InstanceCountViolation;->mClass:Ljava/lang/Class;

    #@31
    .line 2504
    iput-wide p2, p0, Landroid/os/StrictMode$InstanceCountViolation;->mInstances:J

    #@33
    .line 2505
    iput p4, p0, Landroid/os/StrictMode$InstanceCountViolation;->mLimit:I

    #@35
    .line 2500
    return-void
.end method
