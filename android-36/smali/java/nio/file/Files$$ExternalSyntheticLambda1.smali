.class public final synthetic Ljava/nio/file/Files$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Ljava/nio/file/FileTreeIterator;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/nio/file/FileTreeIterator;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/nio/file/Files$$ExternalSyntheticLambda1;->f$0:Ljava/nio/file/FileTreeIterator;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    .line 0
    iget-object v0, p0, Ljava/nio/file/Files$$ExternalSyntheticLambda1;->f$0:Ljava/nio/file/FileTreeIterator;

    invoke-virtual {v0}, Ljava/nio/file/FileTreeIterator;->close()V

    return-void
.end method
