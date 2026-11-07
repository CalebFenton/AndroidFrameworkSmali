.class Lsun/misc/Cleaner$1;
.super Ljava/lang/Object;
.source "Cleaner.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/misc/Cleaner;->clean()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$x:Ljava/lang/Throwable;


# direct methods
.method constructor blacklist <init>(Lsun/misc/Cleaner;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "this$0"    # Lsun/misc/Cleaner;
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

    .line 172
    iput-object p2, p0, Lsun/misc/Cleaner$1;->val$x:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 172
    invoke-virtual {p0}, Lsun/misc/Cleaner$1;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/lang/Void;
    .registers 4

    .line 174
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-eqz v0, :cond_10

    .line 175
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Cleaner terminated abnormally"

    iget-object v2, p0, Lsun/misc/Cleaner$1;->val$x:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 176
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    .line 177
    :cond_10
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 178
    const/4 v0, 0x0

    return-object v0
.end method
