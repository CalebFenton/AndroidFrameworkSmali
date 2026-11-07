.class public Landroid/app/IGrammaticalInflectionManager$Default;
.super Ljava/lang/Object;
.source "IGrammaticalInflectionManager.java"

# interfaces
.implements Landroid/app/IGrammaticalInflectionManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IGrammaticalInflectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSystemGrammaticalGender(Landroid/content/AttributionSource;I)I
    .registers 4
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist peekSystemGrammaticalGenderByUserId(Landroid/content/AttributionSource;I)I
    .registers 4
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setRequestedApplicationGrammaticalGender(Ljava/lang/String;II)V
    .registers 4
    .param p1, "appPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "gender"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

.method public blacklist setSystemWideGrammaticalGender(II)V
    .registers 3
    .param p1, "gender"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method
