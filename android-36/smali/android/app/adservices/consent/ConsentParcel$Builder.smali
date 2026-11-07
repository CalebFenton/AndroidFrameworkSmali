.class public final Landroid/app/adservices/consent/ConsentParcel$Builder;
.super Ljava/lang/Object;
.source "ConsentParcel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/adservices/consent/ConsentParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mConsentApiType:I

.field private blacklist mIsGiven:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmConsentApiType(Landroid/app/adservices/consent/ConsentParcel$Builder;)I
    .registers 1

    iget p0, p0, Landroid/app/adservices/consent/ConsentParcel$Builder;->mConsentApiType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsGiven(Landroid/app/adservices/consent/ConsentParcel$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/app/adservices/consent/ConsentParcel$Builder;->mIsGiven:Z

    return p0
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/adservices/consent/ConsentParcel$Builder;->mConsentApiType:I

    .line 124
    iput-boolean v0, p0, Landroid/app/adservices/consent/ConsentParcel$Builder;->mIsGiven:Z

    .line 126
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/app/adservices/consent/ConsentParcel;
    .registers 3

    .line 144
    iget v0, p0, Landroid/app/adservices/consent/ConsentParcel$Builder;->mConsentApiType:I

    if-eqz v0, :cond_b

    .line 148
    new-instance v0, Landroid/app/adservices/consent/ConsentParcel;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/adservices/consent/ConsentParcel;-><init>(Landroid/app/adservices/consent/ConsentParcel$Builder;Landroid/app/adservices/consent/ConsentParcel-IA;)V

    return-object v0

    .line 145
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "One must set the valid ConsentApiType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setConsentApiType(I)Landroid/app/adservices/consent/ConsentParcel$Builder;
    .registers 2
    .param p1, "consentApiType"    # I

    .line 130
    iput p1, p0, Landroid/app/adservices/consent/ConsentParcel$Builder;->mConsentApiType:I

    .line 131
    return-object p0
.end method

.method public blacklist setIsGiven(Ljava/lang/Boolean;)Landroid/app/adservices/consent/ConsentParcel$Builder;
    .registers 3
    .param p1, "isGiven"    # Ljava/lang/Boolean;

    .line 137
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    iput-boolean v0, p0, Landroid/app/adservices/consent/ConsentParcel$Builder;->mIsGiven:Z

    .line 138
    return-object p0
.end method
