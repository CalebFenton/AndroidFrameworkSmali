.class public final synthetic Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    check-cast p1, Lcom/android/internal/telephony/data/DataProfileManager$DataProfileManagerCallback;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataProfileManager;->$r8$lambda$4EK-8xfqi3qEElC5zrMmqJT2jUo(Lcom/android/internal/telephony/data/DataProfileManager$DataProfileManagerCallback;)V

    return-void
.end method
