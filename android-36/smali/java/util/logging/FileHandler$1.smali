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
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/util/logging/FileHandler;


# direct methods
.method constructor blacklist <init>(Ljava/util/logging/FileHandler;)V
    .registers 2
    .param p1, "this$0"    # Ljava/util/logging/FileHandler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 694
    iput-object p1, p0, Ljava/util/logging/FileHandler$1;->this$0:Ljava/util/logging/FileHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 697
    iget-object v0, p0, Ljava/util/logging/FileHandler$1;->this$0:Ljava/util/logging/FileHandler;

    invoke-static {v0}, Ljava/util/logging/FileHandler;->-$$Nest$mrotate(Ljava/util/logging/FileHandler;)V

    .line 698
    const/4 v0, 0x0

    return-object v0
.end method
