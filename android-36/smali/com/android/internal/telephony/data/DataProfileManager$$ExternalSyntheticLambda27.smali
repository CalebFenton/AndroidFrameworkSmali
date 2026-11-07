.class public final synthetic Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda27;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/data/DataProfileManager$DataProfileManagerCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/DataProfileManager$DataProfileManagerCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda27;->f$0:Lcom/android/internal/telephony/data/DataProfileManager$DataProfileManagerCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda27;->f$0:Lcom/android/internal/telephony/data/DataProfileManager$DataProfileManagerCallback;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataProfileManager$DataProfileManagerCallback;->onDataProfilesChanged()V

    return-void
.end method
