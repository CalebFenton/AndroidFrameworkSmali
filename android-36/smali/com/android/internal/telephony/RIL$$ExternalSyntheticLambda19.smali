.class public final synthetic Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/RadioDataProxy;

.field public final synthetic blacklist f$1:Lcom/android/internal/telephony/RILRequest;

.field public final synthetic blacklist f$10:Z

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:Landroid/telephony/data/DataProfile;

.field public final synthetic blacklist f$4:Z

.field public final synthetic blacklist f$5:I

.field public final synthetic blacklist f$6:Landroid/net/LinkProperties;

.field public final synthetic blacklist f$7:I

.field public final synthetic blacklist f$8:Landroid/telephony/data/NetworkSliceInfo;

.field public final synthetic blacklist f$9:Landroid/telephony/data/TrafficDescriptor;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/RadioDataProxy;Lcom/android/internal/telephony/RILRequest;ILandroid/telephony/data/DataProfile;ZILandroid/net/LinkProperties;ILandroid/telephony/data/NetworkSliceInfo;Landroid/telephony/data/TrafficDescriptor;Z)V
    .registers 12

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda19;->f$0:Lcom/android/internal/telephony/RadioDataProxy;

    iput-object p2, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda19;->f$1:Lcom/android/internal/telephony/RILRequest;

    iput p3, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda19;->f$2:I

    iput-object p4, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda19;->f$3:Landroid/telephony/data/DataProfile;

    iput-boolean p5, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda19;->f$4:Z

    iput p6, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda19;->f$5:I

    iput-object p7, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda19;->f$6:Landroid/net/LinkProperties;

    iput p8, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda19;->f$7:I

    iput-object p9, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda19;->f$8:Landroid/telephony/data/NetworkSliceInfo;

    iput-object p10, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda19;->f$9:Landroid/telephony/data/TrafficDescriptor;

    iput-boolean p11, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda19;->f$10:Z

    return-void
.end method


# virtual methods
.method public final blacklist runOrThrow()V
    .registers 12

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda19;->f$0:Lcom/android/internal/telephony/RadioDataProxy;

    iget-object v1, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda19;->f$1:Lcom/android/internal/telephony/RILRequest;

    iget v2, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda19;->f$2:I

    iget-object v3, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda19;->f$3:Landroid/telephony/data/DataProfile;

    iget-boolean v4, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda19;->f$4:Z

    iget v5, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda19;->f$5:I

    iget-object v6, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda19;->f$6:Landroid/net/LinkProperties;

    iget v7, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda19;->f$7:I

    iget-object v8, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda19;->f$8:Landroid/telephony/data/NetworkSliceInfo;

    iget-object v9, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda19;->f$9:Landroid/telephony/data/TrafficDescriptor;

    iget-boolean v10, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda19;->f$10:Z

    invoke-static/range {v0 .. v10}, Lcom/android/internal/telephony/RIL;->$r8$lambda$2SsXABi-8ZT-bCnIMeoEzNMgdzI(Lcom/android/internal/telephony/RadioDataProxy;Lcom/android/internal/telephony/RILRequest;ILandroid/telephony/data/DataProfile;ZILandroid/net/LinkProperties;ILandroid/telephony/data/NetworkSliceInfo;Landroid/telephony/data/TrafficDescriptor;Z)V

    return-void
.end method
