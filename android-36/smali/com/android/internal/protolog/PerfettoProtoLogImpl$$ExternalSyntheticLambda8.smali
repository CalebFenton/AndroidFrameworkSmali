.class public final synthetic Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/util/proto/ProtoOutputStream;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/util/proto/ProtoOutputStream;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda8;->f$0:Landroid/util/proto/ProtoOutputStream;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda8;->f$0:Landroid/util/proto/ProtoOutputStream;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->lambda$logToProto$5(Landroid/util/proto/ProtoOutputStream;Ljava/lang/Boolean;)V

    return-void
.end method
