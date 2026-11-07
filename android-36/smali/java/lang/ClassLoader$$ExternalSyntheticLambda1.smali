.class public final synthetic Ljava/lang/ClassLoader$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/ClassLoader;

.field public final synthetic blacklist f$1:Ljava/lang/String;

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/ClassLoader;Ljava/lang/String;I)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/lang/ClassLoader$$ExternalSyntheticLambda1;->f$0:Ljava/lang/ClassLoader;

    iput-object p2, p0, Ljava/lang/ClassLoader$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput p3, p0, Ljava/lang/ClassLoader$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Ljava/lang/ClassLoader$$ExternalSyntheticLambda1;->f$0:Ljava/lang/ClassLoader;

    iget-object v1, p0, Ljava/lang/ClassLoader$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget v2, p0, Ljava/lang/ClassLoader$$ExternalSyntheticLambda1;->f$2:I

    invoke-static {v0, v1, v2}, Ljava/lang/ClassLoader;->$r8$lambda$UsbLu6qLqYRmlhsn2LLBJGfpD4w(Ljava/lang/ClassLoader;Ljava/lang/String;I)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
