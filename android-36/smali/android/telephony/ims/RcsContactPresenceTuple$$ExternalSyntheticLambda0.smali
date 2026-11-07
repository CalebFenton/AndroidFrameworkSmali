.class public final synthetic Landroid/telephony/ims/RcsContactPresenceTuple$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/time/temporal/TemporalQuery;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api queryFrom(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {p1}, Ljava/time/Instant;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;

    move-result-object p1

    return-object p1
.end method
