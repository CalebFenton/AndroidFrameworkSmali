.class public final synthetic Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:I

.field public final synthetic blacklist f$1:Z

.field public final synthetic blacklist f$2:Z


# direct methods
.method public synthetic constructor blacklist <init>(IZZ)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda7;->f$0:I

    iput-boolean p2, p0, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda7;->f$1:Z

    iput-boolean p3, p0, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda7;->f$2:Z

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 4

    .line 0
    iget v0, p0, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda7;->f$0:I

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda7;->f$1:Z

    iget-boolean p0, p0, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda7;->f$2:Z

    check-cast p1, Landroid/telephony/data/DataProfile;

    invoke-static {v0, v1, p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->$r8$lambda$TLj2ky2crtidvNIMXYLpUdLrzOQ(IZZLandroid/telephony/data/DataProfile;)Z

    move-result p0

    return p0
.end method
