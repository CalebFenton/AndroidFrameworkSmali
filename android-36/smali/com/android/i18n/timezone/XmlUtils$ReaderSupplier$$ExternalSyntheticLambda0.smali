.class public final synthetic Lcom/android/i18n/timezone/XmlUtils$ReaderSupplier$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/i18n/timezone/XmlUtils$ReaderSupplier;


# instance fields
.field public final synthetic blacklist f$0:Ljava/nio/file/Path;

.field public final synthetic blacklist f$1:Ljava/nio/charset/Charset;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/i18n/timezone/XmlUtils$ReaderSupplier$$ExternalSyntheticLambda0;->f$0:Ljava/nio/file/Path;

    iput-object p2, p0, Lcom/android/i18n/timezone/XmlUtils$ReaderSupplier$$ExternalSyntheticLambda0;->f$1:Ljava/nio/charset/Charset;

    return-void
.end method


# virtual methods
.method public final blacklist get()Ljava/io/Reader;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/i18n/timezone/XmlUtils$ReaderSupplier$$ExternalSyntheticLambda0;->f$0:Ljava/nio/file/Path;

    iget-object v1, p0, Lcom/android/i18n/timezone/XmlUtils$ReaderSupplier$$ExternalSyntheticLambda0;->f$1:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lcom/android/i18n/timezone/XmlUtils$ReaderSupplier;->lambda$forFile$0(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method
