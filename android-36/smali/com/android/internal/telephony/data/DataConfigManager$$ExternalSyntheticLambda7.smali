.class public final synthetic Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda7;->f$0:Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda7;->f$0:Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/data/DataConfigManager;->$r8$lambda$B_nlWBFydWffWvw-p1HEG26gyMY(Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;Ljava/lang/String;Lcom/android/internal/telephony/data/DataNetwork$NetworkBandwidth;)V

    return-void
.end method
