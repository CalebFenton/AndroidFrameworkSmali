.class public final Lcom/android/internal/telephony/cdnr/EriEfData;
.super Ljava/lang/Object;
.source "EriEfData.java"

# interfaces
.implements Lcom/android/internal/telephony/cdnr/EfData;


# instance fields
.field private final blacklist mEriText:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/internal/telephony/cdnr/EriEfData;->mEriText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist getServiceProviderName()Ljava/lang/String;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/android/internal/telephony/cdnr/EriEfData;->mEriText:Ljava/lang/String;

    return-object p0
.end method
