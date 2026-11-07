.class public final Landroid/adservices/signals/UpdateSignalsInput$Builder;
.super Ljava/lang/Object;
.source "UpdateSignalsInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/signals/UpdateSignalsInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCallerPackageName:Ljava/lang/String;

.field private blacklist mUpdateUri:Landroid/net/Uri;


# direct methods
.method public constructor blacklist <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .registers 3
    .param p1, "updateUri"    # Landroid/net/Uri;
    .param p2, "callerPackageName"    # Ljava/lang/String;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iput-object p1, p0, Landroid/adservices/signals/UpdateSignalsInput$Builder;->mUpdateUri:Landroid/net/Uri;

    .line 152
    iput-object p2, p0, Landroid/adservices/signals/UpdateSignalsInput$Builder;->mCallerPackageName:Ljava/lang/String;

    .line 153
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/adservices/signals/UpdateSignalsInput;
    .registers 5

    .line 186
    new-instance v0, Landroid/adservices/signals/UpdateSignalsInput;

    iget-object v1, p0, Landroid/adservices/signals/UpdateSignalsInput$Builder;->mUpdateUri:Landroid/net/Uri;

    iget-object v2, p0, Landroid/adservices/signals/UpdateSignalsInput$Builder;->mCallerPackageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/adservices/signals/UpdateSignalsInput;-><init>(Landroid/net/Uri;Ljava/lang/String;Landroid/adservices/signals/UpdateSignalsInput-IA;)V

    return-object v0
.end method

.method public blacklist setCallerPackageName(Ljava/lang/String;)Landroid/adservices/signals/UpdateSignalsInput$Builder;
    .registers 2
    .param p1, "callerPackageName"    # Ljava/lang/String;

    .line 174
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iput-object p1, p0, Landroid/adservices/signals/UpdateSignalsInput$Builder;->mCallerPackageName:Ljava/lang/String;

    .line 176
    return-object p0
.end method

.method public blacklist setUpdateUri(Landroid/net/Uri;)Landroid/adservices/signals/UpdateSignalsInput$Builder;
    .registers 2
    .param p1, "updateUri"    # Landroid/net/Uri;

    .line 162
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iput-object p1, p0, Landroid/adservices/signals/UpdateSignalsInput$Builder;->mUpdateUri:Landroid/net/Uri;

    .line 164
    return-object p0
.end method
