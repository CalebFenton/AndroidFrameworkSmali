.class public final synthetic Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Z


# direct methods
.method public synthetic constructor blacklist <init>(Z)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda9;->f$0:Z

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda9;->f$0:Z

    check-cast p1, Landroid/telephony/data/DataProfile;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->$r8$lambda$TbkbT1ej-018E4ZcJC6T38pDhvg(ZLandroid/telephony/data/DataProfile;)Z

    move-result p0

    return p0
.end method
