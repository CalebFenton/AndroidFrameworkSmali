.class public final synthetic Landroid/telephony/data/DataService$DataServiceHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/IIntegerConsumer;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/IIntegerConsumer;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/data/DataService$DataServiceHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/IIntegerConsumer;

    return-void
.end method


# virtual methods
.method public final blacklist acceptOrThrow(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/telephony/data/DataService$DataServiceHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/IIntegerConsumer;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IIntegerConsumer;->accept(I)V

    return-void
.end method
