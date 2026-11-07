.class public final Landroid/os/StrictMode$VmPolicy;
.super Ljava/lang/Object;
.source "StrictMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VmPolicy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/StrictMode$VmPolicy$Builder;
    }
.end annotation


# static fields
.field public static final whitelist LAX:Landroid/os/StrictMode$VmPolicy;


# instance fields
.field final greylist-max-o classInstanceLimit:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final greylist-max-o mCallbackExecutor:Ljava/util/concurrent/Executor;

.field final greylist-max-o mListener:Landroid/os/StrictMode$OnVmViolationListener;

.field final greylist mask:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 748
    new-instance v0, Landroid/os/StrictMode$VmPolicy;

    invoke-static {}, Landroid/os/StrictMode;->-$$Nest$sfgetEMPTY_CLASS_LIMIT_MAP()Ljava/util/HashMap;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2, v2}, Landroid/os/StrictMode$VmPolicy;-><init>(ILjava/util/HashMap;Landroid/os/StrictMode$OnVmViolationListener;Ljava/util/concurrent/Executor;)V

    sput-object v0, Landroid/os/StrictMode$VmPolicy;->LAX:Landroid/os/StrictMode$VmPolicy;

    return-void
.end method

.method private constructor greylist-max-o <init>(ILjava/util/HashMap;Landroid/os/StrictMode$OnVmViolationListener;Ljava/util/concurrent/Executor;)V
    .registers 7
    .param p1, "mask"    # I
    .param p3, "listener"    # Landroid/os/StrictMode$OnVmViolationListener;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/Class;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/os/StrictMode$OnVmViolationListener;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 762
    .local p2, "classInstanceLimit":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 763
    if-eqz p2, :cond_e

    .line 766
    iput p1, p0, Landroid/os/StrictMode$VmPolicy;->mask:I

    .line 767
    iput-object p2, p0, Landroid/os/StrictMode$VmPolicy;->classInstanceLimit:Ljava/util/HashMap;

    .line 768
    iput-object p3, p0, Landroid/os/StrictMode$VmPolicy;->mListener:Landroid/os/StrictMode$OnVmViolationListener;

    .line 769
    iput-object p4, p0, Landroid/os/StrictMode$VmPolicy;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 770
    return-void

    .line 764
    :cond_e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "classInstanceLimit == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor blacklist <init>(ILjava/util/HashMap;Landroid/os/StrictMode$OnVmViolationListener;Ljava/util/concurrent/Executor;Landroid/os/StrictMode-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/os/StrictMode$VmPolicy;-><init>(ILjava/util/HashMap;Landroid/os/StrictMode$OnVmViolationListener;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 774
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[StrictMode.VmPolicy; mask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/StrictMode$VmPolicy;->mask:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
