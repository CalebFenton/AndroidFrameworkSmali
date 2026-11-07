.class public final synthetic Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-static {p1, p2}, Lcom/android/internal/telephony/uicc/SimPhonebookRecordCache;->$r8$lambda$nRP_VE1rhMA6RbyzHorbe96tNzg(Ljava/lang/Integer;Lcom/android/internal/telephony/uicc/AdnRecord;)Lcom/android/internal/telephony/uicc/AdnRecord;

    move-result-object p0

    return-object p0
.end method
