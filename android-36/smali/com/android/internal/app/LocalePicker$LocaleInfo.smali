.class public Lcom/android/internal/app/LocalePicker$LocaleInfo;
.super Ljava/lang/Object;
.source "LocalePicker.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/LocalePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocaleInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
        ">;"
    }
.end annotation


# static fields
.field static final blacklist sCollator:Ljava/text/Collator;


# instance fields
.field blacklist label:Ljava/lang/String;

.field final blacklist locale:Ljava/util/Locale;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 68
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/LocalePicker$LocaleInfo;->sCollator:Ljava/text/Collator;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .registers 3
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/android/internal/app/LocalePicker$LocaleInfo;->label:Ljava/lang/String;

    .line 75
    iput-object p2, p0, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    .line 76
    return-void
.end method


# virtual methods
.method public blacklist compareTo(Lcom/android/internal/app/LocalePicker$LocaleInfo;)I
    .registers 5
    .param p1, "another"    # Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 94
    sget-object v0, Lcom/android/internal/app/LocalePicker$LocaleInfo;->sCollator:Ljava/text/Collator;

    iget-object v1, p0, Lcom/android/internal/app/LocalePicker$LocaleInfo;->label:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/internal/app/LocalePicker$LocaleInfo;->label:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 67
    check-cast p1, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->compareTo(Lcom/android/internal/app/LocalePicker$LocaleInfo;)I

    move-result p1

    return p1
.end method

.method public blacklist getLabel()Ljava/lang/String;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/android/internal/app/LocalePicker$LocaleInfo;->label:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-r getLocale()Ljava/util/Locale;
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/android/internal/app/LocalePicker$LocaleInfo;->label:Ljava/lang/String;

    return-object v0
.end method
