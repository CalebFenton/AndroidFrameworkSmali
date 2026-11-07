.class public final synthetic Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntPredicate;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(I)Z
    .registers 2

    .line 0
    invoke-static {p1}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->lambda$onTracingInstanceStop$7(I)Z

    move-result p1

    return p1
.end method
