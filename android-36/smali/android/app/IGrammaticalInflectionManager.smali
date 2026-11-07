.class public interface abstract Landroid/app/IGrammaticalInflectionManager;
.super Ljava/lang/Object;
.source "IGrammaticalInflectionManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IGrammaticalInflectionManager$Stub;,
        Landroid/app/IGrammaticalInflectionManager$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.app.IGrammaticalInflectionManager"


# virtual methods
.method public abstract blacklist getSystemGrammaticalGender(Landroid/content/AttributionSource;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist peekSystemGrammaticalGenderByUserId(Landroid/content/AttributionSource;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setRequestedApplicationGrammaticalGender(Ljava/lang/String;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setSystemWideGrammaticalGender(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
