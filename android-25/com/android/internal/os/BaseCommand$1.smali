.class Lcom/android/internal/os/BaseCommand$1;
.super Landroid/os/ShellCommand;
.source "BaseCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BaseCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/BaseCommand;


# direct methods
.method constructor <init>(Lcom/android/internal/os/BaseCommand;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/os/BaseCommand;

    #@0
    .prologue
    .line 26
    iput-object p1, p0, Lcom/android/internal/os/BaseCommand$1;->this$0:Lcom/android/internal/os/BaseCommand;

    #@2
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;

    #@0
    .prologue
    .line 28
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onHelp()V
    .locals 0

    #@0
    .prologue
    .line 30
    return-void
.end method
