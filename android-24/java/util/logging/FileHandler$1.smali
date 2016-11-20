.class Ljava/util/logging/FileHandler$1;
.super Ljava/lang/Object;
.source "FileHandler.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/logging/FileHandler;->publish(Ljava/util/logging/LogRecord;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/logging/FileHandler;


# direct methods
.method constructor <init>(Ljava/util/logging/FileHandler;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/logging/FileHandler;

    #@0
    .prologue
    .line 586
    iput-object p1, p0, Ljava/util/logging/FileHandler$1;->this$0:Ljava/util/logging/FileHandler;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 588
    iget-object v0, p0, Ljava/util/logging/FileHandler$1;->this$0:Ljava/util/logging/FileHandler;

    #@2
    invoke-static {v0}, Ljava/util/logging/FileHandler;->-wrap0(Ljava/util/logging/FileHandler;)V

    #@5
    .line 589
    const/4 v0, 0x0

    #@6
    return-object v0
.end method
