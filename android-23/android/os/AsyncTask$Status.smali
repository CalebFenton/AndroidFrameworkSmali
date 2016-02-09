.class public final enum Landroid/os/AsyncTask$Status;
.super Ljava/lang/Enum;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/os/AsyncTask$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/os/AsyncTask$Status;

.field public static final enum FINISHED:Landroid/os/AsyncTask$Status;

.field public static final enum PENDING:Landroid/os/AsyncTask$Status;

.field public static final enum RUNNING:Landroid/os/AsyncTask$Status;


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
    .line 257
    new-instance v0, Landroid/os/AsyncTask$Status;

    #@5
    const-string/jumbo v1, "PENDING"

    #@8
    invoke-direct {v0, v1, v2}, Landroid/os/AsyncTask$Status;-><init>(Ljava/lang/String;I)V

    #@b
    .line 260
    sput-object v0, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    #@d
    .line 261
    new-instance v0, Landroid/os/AsyncTask$Status;

    #@f
    const-string/jumbo v1, "RUNNING"

    #@12
    invoke-direct {v0, v1, v3}, Landroid/os/AsyncTask$Status;-><init>(Ljava/lang/String;I)V

    #@15
    .line 264
    sput-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    #@17
    .line 265
    new-instance v0, Landroid/os/AsyncTask$Status;

    #@19
    const-string/jumbo v1, "FINISHED"

    #@1c
    invoke-direct {v0, v1, v4}, Landroid/os/AsyncTask$Status;-><init>(Ljava/lang/String;I)V

    #@1f
    .line 268
    sput-object v0, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    #@21
    .line 256
    const/4 v0, 0x3

    #@22
    new-array v0, v0, [Landroid/os/AsyncTask$Status;

    #@24
    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    #@26
    aput-object v1, v0, v2

    #@28
    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    #@2a
    aput-object v1, v0, v3

    #@2c
    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    #@2e
    aput-object v1, v0, v4

    #@30
    sput-object v0, Landroid/os/AsyncTask$Status;->$VALUES:[Landroid/os/AsyncTask$Status;

    #@32
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 256
    .local p0, "this":Landroid/os/AsyncTask$Status;, "Landroid/os/AsyncTask<TParams;TProgress;TResult;>.Status;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/os/AsyncTask$Status;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 256
    const-class v0, Landroid/os/AsyncTask$Status;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/os/AsyncTask$Status;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/os/AsyncTask$Status;
    .locals 1

    #@0
    .prologue
    .line 256
    sget-object v0, Landroid/os/AsyncTask$Status;->$VALUES:[Landroid/os/AsyncTask$Status;

    #@2
    return-object v0
.end method
