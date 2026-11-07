.class public final synthetic Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda2;
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

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Landroid/telephony/data/DataProfile;

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/data/DataProfileManager;->$r8$lambda$7jSBMW4h_6Fpq4A5vfnGXZMlrVY(Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;Ljava/lang/Integer;Landroid/telephony/data/DataProfile;)V

    return-void
.end method
