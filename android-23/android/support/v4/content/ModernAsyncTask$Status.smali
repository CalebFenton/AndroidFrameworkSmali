.class public final enum Landroid/support/v4/content/ModernAsyncTask$Status;
.super Ljava/lang/Enum;
.source "ModernAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/ModernAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/support/v4/content/ModernAsyncTask$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/support/v4/content/ModernAsyncTask$Status;

.field public static final enum FINISHED:Landroid/support/v4/content/ModernAsyncTask$Status;

.field public static final enum PENDING:Landroid/support/v4/content/ModernAsyncTask$Status;

.field public static final enum RUNNING:Landroid/support/v4/content/ModernAsyncTask$Status;


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
    .line 91
    new-instance v0, Landroid/support/v4/content/ModernAsyncTask$Status;

    #@5
    const-string/jumbo v1, "PENDING"

    #@8
    invoke-direct {v0, v1, v2}, Landroid/support/v4/content/ModernAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    #@b
    .line 94
    sput-object v0, Landroid/support/v4/content/ModernAsyncTask$Status;->PENDING:Landroid/support/v4/content/ModernAsyncTask$Status;

    #@d
    .line 95
    new-instance v0, Landroid/support/v4/content/ModernAsyncTask$Status;

    #@f
    const-string/jumbo v1, "RUNNING"

    #@12
    invoke-direct {v0, v1, v3}, Landroid/support/v4/content/ModernAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    #@15
    .line 98
    sput-object v0, Landroid/support/v4/content/ModernAsyncTask$Status;->RUNNING:Landroid/support/v4/content/ModernAsyncTask$Status;

    #@17
    .line 99
    new-instance v0, Landroid/support/v4/content/ModernAsyncTask$Status;

    #@19
    const-string/jumbo v1, "FINISHED"

    #@1c
    invoke-direct {v0, v1, v4}, Landroid/support/v4/content/ModernAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    #@1f
    .line 102
    sput-object v0, Landroid/support/v4/content/ModernAsyncTask$Status;->FINISHED:Landroid/support/v4/content/ModernAsyncTask$Status;

    #@21
    .line 90
    const/4 v0, 0x3

    #@22
    new-array v0, v0, [Landroid/support/v4/content/ModernAsyncTask$Status;

    #@24
    sget-object v1, Landroid/support/v4/content/ModernAsyncTask$Status;->PENDING:Landroid/support/v4/content/ModernAsyncTask$Status;

    #@26
    aput-object v1, v0, v2

    #@28
    sget-object v1, Landroid/support/v4/content/ModernAsyncTask$Status;->RUNNING:Landroid/support/v4/content/ModernAsyncTask$Status;

    #@2a
    aput-object v1, v0, v3

    #@2c
    sget-object v1, Landroid/support/v4/content/ModernAsyncTask$Status;->FINISHED:Landroid/support/v4/content/ModernAsyncTask$Status;

    #@2e
    aput-object v1, v0, v4

    #@30
    sput-object v0, Landroid/support/v4/content/ModernAsyncTask$Status;->$VALUES:[Landroid/support/v4/content/ModernAsyncTask$Status;

    #@32
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 90
    .local p0, "this":Landroid/support/v4/content/ModernAsyncTask$Status;, "Landroid/support/v4/content/ModernAsyncTask<TParams;TProgress;TResult;>.Status;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/support/v4/content/ModernAsyncTask$Status;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 90
    const-class v0, Landroid/support/v4/content/ModernAsyncTask$Status;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/support/v4/content/ModernAsyncTask$Status;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/support/v4/content/ModernAsyncTask$Status;
    .locals 1

    #@0
    .prologue
    .line 90
    sget-object v0, Landroid/support/v4/content/ModernAsyncTask$Status;->$VALUES:[Landroid/support/v4/content/ModernAsyncTask$Status;

    #@2
    return-object v0
.end method
