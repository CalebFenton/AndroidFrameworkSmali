.class public final synthetic Ljava/nio/CharBuffer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Ljava/nio/CharBuffer;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/nio/CharBuffer;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/nio/CharBuffer$$ExternalSyntheticLambda0;->f$0:Ljava/nio/CharBuffer;

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Ljava/nio/CharBuffer$$ExternalSyntheticLambda0;->f$0:Ljava/nio/CharBuffer;

    invoke-static {v0}, Ljava/nio/CharBuffer;->$r8$lambda$Som7I6U_fSqE3CGCdwvExB8kT18(Ljava/nio/CharBuffer;)Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method
