.class Landroid/content/LoggingContentInterface$Logger;
.super Ljava/lang/Object;
.source "LoggingContentInterface.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/LoggingContentInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Logger"
.end annotation


# instance fields
.field private final blacklist sb:Ljava/lang/StringBuilder;

.field final synthetic blacklist this$0:Landroid/content/LoggingContentInterface;


# direct methods
.method public varargs constructor blacklist <init>(Landroid/content/LoggingContentInterface;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 7
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 54
    iput-object p1, p0, Landroid/content/LoggingContentInterface$Logger;->this$0:Landroid/content/LoggingContentInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Landroid/content/LoggingContentInterface$Logger;->sb:Ljava/lang/StringBuilder;

    .line 56
    array-length p1, p3

    const/4 v0, 0x0

    :goto_e
    if-ge v0, p1, :cond_1f

    aget-object v1, p3, v0

    .line 57
    .local v1, "arg":Ljava/lang/Object;
    instance-of v2, v1, Landroid/os/Bundle;

    if-eqz v2, :cond_1c

    .line 58
    move-object v2, v1

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    .line 56
    .end local v1    # "arg":Ljava/lang/Object;
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 62
    :cond_1f
    iget-object p1, p0, Landroid/content/LoggingContentInterface$Logger;->sb:Ljava/lang/StringBuilder;

    const-string v0, "callingUid="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 63
    iget-object p1, p0, Landroid/content/LoggingContentInterface$Logger;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget-object p1, p0, Landroid/content/LoggingContentInterface$Logger;->sb:Ljava/lang/StringBuilder;

    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-direct {p0, p3}, Landroid/content/LoggingContentInterface$Logger;->deepToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    return-void
.end method

.method private blacklist deepToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 68
    if-eqz p1, :cond_14

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 69
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 71
    :cond_14
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3

    .line 87
    iget-object v0, p0, Landroid/content/LoggingContentInterface$Logger;->this$0:Landroid/content/LoggingContentInterface;

    invoke-static {v0}, Landroid/content/LoggingContentInterface;->-$$Nest$fgettag(Landroid/content/LoggingContentInterface;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/content/LoggingContentInterface$Logger;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void
.end method

.method public blacklist setResult(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 76
    .local p1, "res":Ljava/lang/Object;, "TT;"
    instance-of v0, p1, Landroid/database/Cursor;

    if-eqz v0, :cond_14

    .line 77
    iget-object v0, p0, Landroid/content/LoggingContentInterface$Logger;->sb:Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    move-object v0, p1

    check-cast v0, Landroid/database/Cursor;

    iget-object v1, p0, Landroid/content/LoggingContentInterface$Logger;->sb:Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->dumpCursor(Landroid/database/Cursor;Ljava/lang/StringBuilder;)V

    goto :goto_23

    .line 80
    :cond_14
    iget-object v0, p0, Landroid/content/LoggingContentInterface$Logger;->sb:Ljava/lang/StringBuilder;

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Landroid/content/LoggingContentInterface$Logger;->deepToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    :goto_23
    return-object p1
.end method
