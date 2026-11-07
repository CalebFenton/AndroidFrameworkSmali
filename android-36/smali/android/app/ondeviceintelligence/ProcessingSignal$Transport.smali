.class final Landroid/app/ondeviceintelligence/ProcessingSignal$Transport;
.super Landroid/app/ondeviceintelligence/IProcessingSignal$Stub;
.source "ProcessingSignal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ondeviceintelligence/ProcessingSignal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Transport"
.end annotation


# instance fields
.field final blacklist mProcessingSignal:Landroid/app/ondeviceintelligence/ProcessingSignal;


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 216
    invoke-direct {p0}, Landroid/app/ondeviceintelligence/IProcessingSignal$Stub;-><init>()V

    .line 217
    new-instance v0, Landroid/app/ondeviceintelligence/ProcessingSignal;

    invoke-direct {v0}, Landroid/app/ondeviceintelligence/ProcessingSignal;-><init>()V

    iput-object v0, p0, Landroid/app/ondeviceintelligence/ProcessingSignal$Transport;->mProcessingSignal:Landroid/app/ondeviceintelligence/ProcessingSignal;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/ondeviceintelligence/ProcessingSignal-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/app/ondeviceintelligence/ProcessingSignal$Transport;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist sendSignal(Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "actionParams"    # Landroid/os/PersistableBundle;

    .line 221
    iget-object v0, p0, Landroid/app/ondeviceintelligence/ProcessingSignal$Transport;->mProcessingSignal:Landroid/app/ondeviceintelligence/ProcessingSignal;

    invoke-virtual {v0, p1}, Landroid/app/ondeviceintelligence/ProcessingSignal;->sendSignal(Landroid/os/PersistableBundle;)V

    .line 222
    return-void
.end method
