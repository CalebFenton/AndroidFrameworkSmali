.class public interface abstract Lcom/android/internal/telephony/d2d/RtpAdapter;
.super Ljava/lang/Object;
.source "RtpAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/d2d/RtpAdapter$Callback;
    }
.end annotation


# virtual methods
.method public abstract blacklist getAcceptedRtpHeaderExtensions()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/RtpHeaderExtensionType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist sendRtpHeaderExtensions(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/RtpHeaderExtension;",
            ">;)V"
        }
    .end annotation
.end method
