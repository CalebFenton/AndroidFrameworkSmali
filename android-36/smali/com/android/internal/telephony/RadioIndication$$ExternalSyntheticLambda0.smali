.class public final synthetic Lcom/android/internal/telephony/RadioIndication$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api applyAsInt(Ljava/lang/Object;)I
    .registers 2

    .line 0
    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Lcom/android/internal/telephony/RadioIndication;->$r8$lambda$hJfsdF8Uo_WQmi7h2p94yEFJhfg(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method
