.class public interface abstract Landroid/net/wifi/ISuggestionUserApprovalStatusListener;
.super Ljava/lang/Object;
.source "ISuggestionUserApprovalStatusListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/ISuggestionUserApprovalStatusListener$Stub;,
        Landroid/net/wifi/ISuggestionUserApprovalStatusListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.ISuggestionUserApprovalStatusListener"


# virtual methods
.method public abstract blacklist onUserApprovalStatusChange(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
