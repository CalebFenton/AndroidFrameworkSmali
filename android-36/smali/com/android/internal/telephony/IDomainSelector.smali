.class public interface abstract Lcom/android/internal/telephony/IDomainSelector;
.super Ljava/lang/Object;
.source "IDomainSelector.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IDomainSelector$Stub;,
        Lcom/android/internal/telephony/IDomainSelector$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.IDomainSelector"


# virtual methods
.method public abstract blacklist finishSelection()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist reselectDomain(Landroid/telephony/DomainSelectionService$SelectionAttributes;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
