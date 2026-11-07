.class public final Llibcore/internal/Java21LanguageFeatures$AnyPair;
.super Ljava/lang/Record;
.source "Java21LanguageFeatures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/internal/Java21LanguageFeatures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AnyPair"
.end annotation

.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {}
    }
    componentAnnotations = {
        {},
        {}
    }
    componentNames = {
        "a",
        "b"
    }
    componentSignatures = {
        .subannotation Ldalvik/annotation/Signature;
            value = {
                "TS;"
            }
        .end subannotation,
        .subannotation Ldalvik/annotation/Signature;
            value = {
                "TT;"
            }
        .end subannotation
    }
    componentTypes = {
        Ljava/lang/Object;,
        Ljava/lang/Object;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Record;"
    }
.end annotation


# instance fields
.field private final blacklist a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field private final blacklist b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TT;)V"
        }
    .end annotation

    .line 168
    .local p0, "this":Llibcore/internal/Java21LanguageFeatures$AnyPair;, "Llibcore/internal/Java21LanguageFeatures$AnyPair<TS;TT;>;"
    .local p1, "a":Ljava/lang/Object;, "TS;"
    .local p2, "b":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput-object p1, p0, Llibcore/internal/Java21LanguageFeatures$AnyPair;->a:Ljava/lang/Object;

    iput-object p2, p0, Llibcore/internal/Java21LanguageFeatures$AnyPair;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public blacklist a()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 168
    .local p0, "this":Llibcore/internal/Java21LanguageFeatures$AnyPair;, "Llibcore/internal/Java21LanguageFeatures$AnyPair<TS;TT;>;"
    iget-object v0, p0, Llibcore/internal/Java21LanguageFeatures$AnyPair;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public blacklist b()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 168
    .local p0, "this":Llibcore/internal/Java21LanguageFeatures$AnyPair;, "Llibcore/internal/Java21LanguageFeatures$AnyPair<TS;TT;>;"
    iget-object v0, p0, Llibcore/internal/Java21LanguageFeatures$AnyPair;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 168
    .local p0, "this":Llibcore/internal/Java21LanguageFeatures$AnyPair;, "Llibcore/internal/Java21LanguageFeatures$AnyPair<TS;TT;>;"
    invoke-custom {p0, p1}, call_site_3("equals", (Llibcore/internal/Java21LanguageFeatures$AnyPair;Ljava/lang/Object;)Z, Llibcore/internal/Java21LanguageFeatures$AnyPair;, "a;b", instance-get@Llibcore/internal/Java21LanguageFeatures$AnyPair;->a:Ljava/lang/Object;, instance-get@Llibcore/internal/Java21LanguageFeatures$AnyPair;->b:Ljava/lang/Object;)@Ljava/lang/runtime/ObjectMethods;->bootstrap(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/TypeDescriptor;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/invoke/MethodHandle;)Ljava/lang/Object;

    move-result v0

    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 2

    .line 168
    .local p0, "this":Llibcore/internal/Java21LanguageFeatures$AnyPair;, "Llibcore/internal/Java21LanguageFeatures$AnyPair<TS;TT;>;"
    invoke-custom {p0}, call_site_4("hashCode", (Llibcore/internal/Java21LanguageFeatures$AnyPair;)I, Llibcore/internal/Java21LanguageFeatures$AnyPair;, "a;b", instance-get@Llibcore/internal/Java21LanguageFeatures$AnyPair;->a:Ljava/lang/Object;, instance-get@Llibcore/internal/Java21LanguageFeatures$AnyPair;->b:Ljava/lang/Object;)@Ljava/lang/runtime/ObjectMethods;->bootstrap(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/TypeDescriptor;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/invoke/MethodHandle;)Ljava/lang/Object;

    move-result v0

    return v0
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 168
    .local p0, "this":Llibcore/internal/Java21LanguageFeatures$AnyPair;, "Llibcore/internal/Java21LanguageFeatures$AnyPair<TS;TT;>;"
    invoke-custom {p0}, call_site_5("toString", (Llibcore/internal/Java21LanguageFeatures$AnyPair;)Ljava/lang/String;, Llibcore/internal/Java21LanguageFeatures$AnyPair;, "a;b", instance-get@Llibcore/internal/Java21LanguageFeatures$AnyPair;->a:Ljava/lang/Object;, instance-get@Llibcore/internal/Java21LanguageFeatures$AnyPair;->b:Ljava/lang/Object;)@Ljava/lang/runtime/ObjectMethods;->bootstrap(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/TypeDescriptor;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/invoke/MethodHandle;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
