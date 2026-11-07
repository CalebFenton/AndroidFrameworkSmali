.class Ljava/lang/UNIXProcess$2;
.super Ljava/lang/Object;
.source "UNIXProcess.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/lang/UNIXProcess;-><init>([B[BI[BI[B[IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/lang/UNIXProcess;

.field final synthetic blacklist val$fds:[I


# direct methods
.method constructor blacklist <init>(Ljava/lang/UNIXProcess;[I)V
    .registers 3
    .param p1, "this$0"    # Ljava/lang/UNIXProcess;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 141
    iput-object p1, p0, Ljava/lang/UNIXProcess$2;->this$0:Ljava/lang/UNIXProcess;

    iput-object p2, p0, Ljava/lang/UNIXProcess$2;->val$fds:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 141
    invoke-virtual {p0}, Ljava/lang/UNIXProcess$2;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/lang/Void;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    iget-object v0, p0, Ljava/lang/UNIXProcess$2;->this$0:Ljava/lang/UNIXProcess;

    iget-object v1, p0, Ljava/lang/UNIXProcess$2;->val$fds:[I

    invoke-virtual {v0, v1}, Ljava/lang/UNIXProcess;->initStreams([I)V

    .line 144
    const/4 v0, 0x0

    return-object v0
.end method
