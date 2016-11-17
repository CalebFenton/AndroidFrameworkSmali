.class public interface abstract Lsun/security/provider/certpath/OCSP$RevocationStatus;
.super Ljava/lang/Object;
.source "OCSP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/provider/certpath/OCSP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RevocationStatus"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;
    }
.end annotation


# virtual methods
.method public abstract getCertStatus()Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;
.end method

.method public abstract getRevocationReason()Ljava/security/cert/CRLReason;
.end method

.method public abstract getRevocationTime()Ljava/util/Date;
.end method

.method public abstract getSingleExtensions()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/cert/Extension;",
            ">;"
        }
    .end annotation
.end method
